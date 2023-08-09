package com.jads.sentinel.services;

import java.util.List;

import com.jads.sentinel.dto.ReportRequest;

public interface ReportService {

	Long saveReports(List<ReportRequest> requests, String userId);

}
