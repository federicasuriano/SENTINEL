import { Category } from "./Category";
import { Question } from "./Question";

export interface Issue {
  id?: number;

  category: Category;
  question: Question;

}
