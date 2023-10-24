import { Situation } from "./Situation";

export interface Report {
    id?: number;
    branchType: string;
    employerName: string;
    employmentAgencyName: string;
    maxHouseholds: number;
    numPeople: number;
    reportTime: string;
    type: number;
    userId: string;
    remark: string;

    situations: Situation[];
  }
