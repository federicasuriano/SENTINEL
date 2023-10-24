package com.jads.sentinel.services;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jads.sentinel.dto.ReportRequest;
import com.jads.sentinel.logging.Log;
import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Category;
import com.jads.sentinel.models.Issue;
import com.jads.sentinel.models.Report;
import com.jads.sentinel.models.Situation;
import com.jads.sentinel.models.Question;

import com.jads.sentinel.repos.AddressReposiroty;
import com.jads.sentinel.repos.ReportReposiroty;
import com.jads.sentinel.repos.SituationReposiroty;
import com.jads.sentinel.repos.CategoryRepository;
import com.jads.sentinel.repos.IssueRepository;
import com.jads.sentinel.repos.QuestionRepository;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private AddressReposiroty addressReposiroty;

	@Autowired
	private AddressService addressService;

	@Autowired
	private ReportReposiroty reportReposiroty;

	@Autowired
	private SituationReposiroty situationReposiroty;

	@Autowired
	private IssueRepository issueRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private QuestionRepository questionRepository;
	
	@Autowired
	private QuestionService questionService;
	
	//List<Category> allCategoriesInDB = this.categoryService.getCategories(); //this.categoryRepository.getCategoriesId();
	//List<Question> allQuestionsInDB = this.questionService.getQuestions(); //this.questionRepository.getQuestionsId();

	@Override
	@Transactional
	public Long saveReports(List<ReportRequest> request, String userId) {

		Instant instant = Instant.now();
		Timestamp sqlTimestamp = Timestamp.from(instant);

		for (ReportRequest reportRequest : request) {

			Address savedAddress = this.addressService.getAddress(reportRequest.getAddress());

			if (savedAddress == null) {

				savedAddress = addressReposiroty.save(reportRequest.getAddress());
			}

			if (reportRequest.getNumRepeatedReports() > 1) {

				for (int i = 0; i < reportRequest.getNumRepeatedReports(); i++) {

					saveReport(userId, sqlTimestamp, reportRequest, savedAddress);					
				}
			} else {

				saveReport(userId, sqlTimestamp, reportRequest, savedAddress);

			}
		}

		Long totalReports = reportReposiroty.count();

		return totalReports;
	}

	private void saveReport(String userId, Timestamp sqlTimestamp, ReportRequest reportRequest, Address savedAddress) {

		Report report = new Report();
		report.setEmployerName(reportRequest.getEmployerName());
		report.setEmploymentAgencyName(reportRequest.getEmploymentAgencyName());
		report.setBranchType(reportRequest.getBranchType());
		report.setAddress(savedAddress);
		report.setUserId(userId);
		report.setReportTime(sqlTimestamp);
		report.setNumPeople(reportRequest.getNumPeople());
		report.setMaxHouseholds(reportRequest.getMaxHouseholds());
		report.setRemark(reportRequest.getRemark());

		Report savedSignal = reportReposiroty.save(report);

		saveSituations(reportRequest, savedSignal);
	}

	private void saveSituations(ReportRequest request, Report savedSignal) {

		Set<String> categorySet = null;
		Set<String> questionSet = null;

		for(Situation situation : request.getSituations()) {

			for	(Issue issue : situation.getIssues()) {
				
				//Setta tutte categorie (housing, health, payment, employer, labor) che trovi in quella situation
				categorySet.add(issue.getCategory().getId());	

				//Setta tutte questions relative alle categorie (housing, health, payment, employer, labor) che trovi in quella situation
				questionSet.add(issue.getQuestion().getId());
				
				Issue savedIssue = issueRepository.save(issue);

			}
	
			situationReposiroty.saveSituation(savedSignal.getId(), situation.getId());
		
		}

		//LOG FILE (una linea per ogni situazione, NB: un report può avere più di una situazione)
		for(Situation situation : request.getSituations()) {
			saveLog(savedSignal, situation, categorySet, questionSet);
		}
	}



	//LOG FILE
	private void saveLog(Report savedSignal, Situation situation, Set<String> categorySet, Set<String> questionSet) {

		System.setProperty("java.util.logging.SimpleFormatter.format", "%1$tQ %5$s %n");

		try {
			Log my_log = new Log("log.txt");

			my_log.logger.setLevel(Level.INFO);

			my_log.logger.info("situation(long idReport, long idAddress, String City, String Province, boolean housingExpl, boolean healthExpl, "
					+ "boolean paymentExpl, boolean laborExpl, boolean employerExpl, boolean householdsExceeded, boolean workingHoursExceeded, "
					+ "boolean pteamsaymentExceeded, boolean noContract, boolean noVacation)");

			my_log.logger.info("reported(" + savedSignal.getId() + ", " + 
					savedSignal.getAddress().getId() + ", " +
					savedSignal.getAddress().getCity() + ", " +
					savedSignal.getAddress().getProvince() + ", " +
				//	saveCategories(categorySet) + 
				//	saveQuestions(questionSet) +				
					")");

		} catch (Exception e) {}

	}

	/*
	Devo creare un metodo che prende tutte le categorie esistenti, se sono in situation stampa 1, altrimenti 0 e in un ordine ben preciso
	perchè altrimenti non funzioa con MonPoly
	Limitante da un lato perchè devo sapere dove è posizionata quella determinata stringa, ogni volta che volendo si aggiunge una category
	o una question, tutto deve essere spostato nelle formule di MonPoly. Ma in realtà ogni volta che ho una nuova carateristica devo
	aggiornare la traduzione delle policy...
	 */
	/*
	private String saveCategories(Set<String> categorySet) {
		String categories = "";
		for(String c : allCategoriesInDB) {
			boolean contains = categorySet.contains(c);
			if(contains) {
				int val = contains ? 1 : 0;
				categories = categories + Integer.toString(val) + ", ";
			}
		}
		return categories;
	}

	private String saveQuestions(Set<String> questionSet) {
		String questions = "";
		for(String q : allQuestionsInDB) {
			boolean contains = questionSet.contains(q);
			if(contains) {
				int val = contains ? 1 : 0;
				questions = questions + Integer.toString(val) + ", ";
			}
		}
		return questions.substring(0, questions.length()-2);
	}

*/

}