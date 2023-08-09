package com.jads.sentinel.repos;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.jads.sentinel.models.Situation;

public interface SituationReposiroty extends JpaRepository<Situation, Long> {

	@Modifying
	@Query(value = "insert into report_has_situation (report_id,situation_id) values (:reportId,:situationId)", nativeQuery = true)
	@Transactional
	void saveSituation(@Param("reportId") Long reportId, @Param("situationId") String situationId);
}
