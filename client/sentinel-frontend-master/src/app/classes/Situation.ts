import { Issue } from "./Issue";

export interface Situation {
  id?: number;
  issues: Issue[];
}
