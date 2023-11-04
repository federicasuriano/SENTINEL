package com.jads.sentinel.services;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;
import java.util.logging.Level;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jads.sentinel.dto.ReportRequest;
import com.jads.sentinel.logging.Log;
import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Report;
import com.jads.sentinel.repos.AddressReposiroty;
import com.jads.sentinel.repos.ReportReposiroty;
import com.jads.sentinel.repos.SituationReposiroty;

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

		boolean housing = false;
		boolean health = false;
		boolean payment = false;
		boolean employer = false;
		boolean labor = false;
		
		boolean householdsExceeded = false;
		boolean paymentExceeded = false;
		boolean noContract = false;
		boolean noVacation = false;
		boolean workingHoursExceeded = false;	
		
		
		// housing
		if (request.getQ_ho_1() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_1());
			housing = true;
					}
		if (request.getQ_ho_2() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_2());
			housing = true;
		}
		if (request.getQ_ho_3() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_3());
			housing = true;
		}
		if (request.getQ_ho_4() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_4());
			housing = true;
		}
		if (request.getQ_ho_5() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_5());
			housing = true;
		}
		if (request.getQ_ho_6() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_6());
			housing = true;
		}
		if (request.getQ_ho_7() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_7());
			housing = true;
		}
		if (request.getQ_ho_8() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_8());
			housing = true;
		}
		if (request.getQ_ho_9() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_9());
			housing = true;
		}
		if (request.getQ_ho_10() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_10());
			housing = true;
		}
		if (request.getQ_ho_11() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_11());
			housing = true;
		}
		if (request.getQ_ho_12() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_12());
			housing = true;
		}
		if (request.getQ_ho_13() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_13());
			housing = true;
		}
		if (request.getQ_ho_14() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_ho_14());
			housing = true;
			householdsExceeded = true;
		}

		// health
		if (request.getQ_he_1() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_1());
			health = true;
		}
		if (request.getQ_he_2() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_2()); 
			health = true;
		}
		if (request.getQ_he_3() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_3()); 
			health = true;
		}
		if (request.getQ_he_4() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_4()); 
			health = true;
		}
		if (request.getQ_he_5() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_5()); 
			health = true;
		}
		if (request.getQ_he_6() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_6()); 
			health = true;
		}
		if (request.getQ_he_7() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_7()); 
			health = true;
		}
		if (request.getQ_he_8() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_he_8()); 
			health = true;
		}

		// payment
		if (request.getQ_pa_1() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_1()); 
			payment = true;
			paymentExceeded = true;
		}
		if (request.getQ_pa_2() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_2()); 
			payment = true;
		}
		if (request.getQ_pa_3() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_3()); 
			payment = true;
			noContract = true;
		}
		if (request.getQ_pa_4() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_4()); 
			payment = true;
		}
		if (request.getQ_pa_5() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_5()); 
			payment = true;
			noVacation = true;
		}
		if (request.getQ_pa_6() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_6()); 
			payment = true;
		}
		if (request.getQ_pa_7() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_7()); 
			payment = true;
		}
		if (request.getQ_pa_8() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_8()); 
			payment = true;
		}
		if (request.getQ_pa_9() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_9()); 
			payment = true;
		}
		if (request.getQ_pa_10() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_10()); 
			payment = true;
		}
		if (request.getQ_pa_11() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_11()); 
			payment = true;
		}
		if (request.getQ_pa_12() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_12()); 
			payment = true;
		}
		if (request.getQ_pa_13() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_13()); 
			payment = true;
		}
		if (request.getQ_pa_14() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_14()); 
			payment = true;
		}
		if (request.getQ_pa_15() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_pa_15()); 
			payment = true;
		}

		// employer
		if (request.getQ_em_1() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_1()); 
			employer = true;
			noContract = true;
		}
		if (request.getQ_em_2() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_2()); 
			employer = true;
		}
		if (request.getQ_em_3() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_3()); 
			employer = true;
			noVacation = true;
		}
		if (request.getQ_em_4() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_4()); 
			employer = true;
		}
		if (request.getQ_em_5() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_5()); 
			employer = true;
		}
		if (request.getQ_em_6() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_6()); 
			employer = true;
		}
		if (request.getQ_em_7() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_7()); 
			employer = true;
		}
		if (request.getQ_em_8() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_8()); 
			employer = true;
		}
		if (request.getQ_em_9() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_9()); 
			employer = true;
		}
		if (request.getQ_em_10() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_10()); 
			employer = true;
		}
		if (request.getQ_em_11() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_11()); 
			employer = true;
		}
		if (request.getQ_em_12() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_12()); 
			employer = true;
		}
		if (request.getQ_em_13() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_13()); 
			employer = true;
		}
		if (request.getQ_em_14() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_14()); 
			employer = true;
		}
		if (request.getQ_em_15() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_15()); 
			employer = true;
		}
		if (request.getQ_em_16() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_16()); 
			employer = true;
		}
		if (request.getQ_em_17() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_17()); 
			employer = true;
		}
		if (request.getQ_em_18() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_18()); 
			employer = true;
		}
		if (request.getQ_em_19() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_19()); 
			employer = true;
		}
		if (request.getQ_em_20() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_20()); 
			employer = true;
		}
		if (request.getQ_em_21() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_21()); 
			employer = true;
		}
		if (request.getQ_em_22() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_22()); 
			employer = true;
		}
		if (request.getQ_em_23() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_23()); 
			employer = true;
		}
		if (request.getQ_em_24() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_24()); 
			employer = true;
		}
		if (request.getQ_em_25() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_em_25()); 
			employer = true;
		}

		// labor
		if (request.getQ_la_1() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_1()); 
			labor = true;
		}
		if (request.getQ_la_2() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_2()); 
			labor = true;
		}
		if (request.getQ_la_3() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_3()); 
			labor = true;
			workingHoursExceeded = true;
		}
		if (request.getQ_la_4() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_4()); 
			labor = true;
			noContract = true;
		}
		if (request.getQ_la_5() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_5()); 
			labor = true;
		}
		if (request.getQ_la_6() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_6()); 
			labor = true;
		}
		if (request.getQ_la_7() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_7()); 
			labor = true;
		}
		if (request.getQ_la_8() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_8()); 
			labor = true;
		}
		if (request.getQ_la_9() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_9()); 
			labor = true;
		}
		if (request.getQ_la_10() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_10()); 
			labor = true;
		}
		if (request.getQ_la_11() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_11()); 
			labor = true;
		}
		if (request.getQ_la_12() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_12()); 
			labor = true;
		}
		if (request.getQ_la_13() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_13()); 
			labor = true;
		}
		if (request.getQ_la_14() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_14()); 
			labor = true;
		}
		if (request.getQ_la_15() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_15()); 
			labor = true;
		}
		if (request.getQ_la_16() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_16()); 
			labor = true;
		}
		if (request.getQ_la_17() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_17()); 
			labor = true;
		}
		if (request.getQ_la_18() != null) {
			situationReposiroty.saveSituation(savedSignal.getId(), request.getQ_la_18()); 
			labor = true;
		}
		
		
		//LOG FILE: housingExpl(idReport), healthExpl(idReport), paymentExpl(idReport), laborExpl(idReport), employerExpl(idReport) and all subtypes
		saveLogSituation(request, savedSignal, housing, health, labor, employer, payment, householdsExceeded, workingHoursExceeded, paymentExceeded, noContract, noVacation);

	}
	

	//LOG FILE: housingExpl(idReport), healthExpl(idReport), paymentExpl(idReport), laborExpl(idReport), employerExpl(idReport) and all subtypes
	private void saveLogSituation(ReportRequest request, Report savedSignal, boolean housing, boolean health, boolean labor, boolean employer, boolean payment, 
			boolean householdsExceeded, boolean workingHoursExceeded, boolean paymentExceeded, boolean noContract, boolean noVacation) {

		System.setProperty("java.util.logging.SimpleFormatter.format", "%1$tQ %5$s %n");
		
		try {
			Log my_log = new Log("log.txt");
			
			my_log.logger.setLevel(Level.INFO);
			/*
			my_log.logger.info("situation(long idReport, long idAddress, String City, String Province, boolean housingExpl, boolean healthExpl, "
					+ "boolean paymentExpl, boolean laborExpl, boolean employerExpl, boolean householdsExceeded, boolean workingHoursExceeded, "
					+ "boolean pteamsaymentExceeded, boolean noContract, boolean noVacation)");
			*/
			my_log.logger.info("situation(" + savedSignal.getId() + ", " + 
					savedSignal.getAddress().getId() + ", " +
					savedSignal.getAddress().getCity() + ", " +
					savedSignal.getAddress().getProvince() + ", " +
					//save categories 
					housing + ", " + health + ", " + labor + ", " + employer + ", " + payment + ", " +
					//save questions	
					householdsExceeded + ", " + workingHoursExceeded + ", " + paymentExceeded + ", " + noContract + ", " + noVacation +
					")");

		} catch (Exception e) {}
	
	
	}	

	
}