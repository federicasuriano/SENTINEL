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
    
    q_ho_1: boolean;
    q_ho_2: boolean;
    q_ho_3: boolean;
    q_ho_4: boolean;
    q_ho_5: boolean;
    q_ho_6: boolean;
    q_ho_7: boolean;
    q_ho_8: boolean;
    q_ho_9: boolean;
    q_ho_10: boolean;

    q_he_1: boolean;
    q_he_2: boolean;
    q_he_3: boolean;
    q_he_4: boolean;

    q_pa_1: boolean;
    q_pa_2: boolean;
    q_pa_3: boolean;
    q_pa_4: boolean;
    q_pa_5: boolean;
    q_pa_6: boolean;
    q_pa_7: boolean;
    q_pa_8: boolean;
    q_pa_9: boolean;
    q_pa_10: boolean;

    q_em_1: boolean;
    q_em_2: boolean;
    q_em_3: boolean;
    q_em_4: boolean;
    q_em_5: boolean;
    q_em_6: boolean;
    q_em_7: boolean;
    q_em_8: boolean;

    q_la_1: boolean;
    q_la_2: boolean;
    q_la_3: boolean;
    q_la_4: boolean;
    q_la_5: boolean;
    q_la_6: boolean;
    q_la_7: boolean;
}