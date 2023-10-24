package com.jads.sentinel.repos;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.jads.sentinel.models.Issue;

public interface IssueRepository extends JpaRepository<Issue, Long> {

	@Modifying
	@Query(value = "insert into situation_has_issue (situation_id, issue_id) values (:situationId, :issueId)", nativeQuery = true)
	@Transactional
	void saveSituation(@Param("situationId") Long situationId, @Param("issueId") Long issueId);
	
}

