import { Address } from "./Address";
import { Report } from "./Report";

export interface Location {
    address: Address;
    reports: Report[];
}