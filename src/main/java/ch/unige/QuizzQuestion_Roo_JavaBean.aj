// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.unige;

import ch.unige.Quizz;
import ch.unige.QuizzQuestion;
import java.util.ArrayList;

privileged aspect QuizzQuestion_Roo_JavaBean {
    
    public String QuizzQuestion.getQuestionText() {
        return this.questionText;
    }
    
    public void QuizzQuestion.setQuestionText(String questionText) {
        this.questionText = questionText;
    }
    
    public ArrayList<String> QuizzQuestion.getAnswers() {
        return this.answers;
    }
    
    public void QuizzQuestion.setAnswers(ArrayList<String> answers) {
        this.answers = answers;
    }
    
    public int QuizzQuestion.getResponse() {
        return this.response;
    }
    
    public void QuizzQuestion.setResponse(int response) {
        this.response = response;
    }
    
    public int QuizzQuestion.getYourresponse() {
        return this.yourresponse;
    }
    
    public void QuizzQuestion.setYourresponse(int yourresponse) {
        this.yourresponse = yourresponse;
    }
    
    public Quizz QuizzQuestion.getQuizOwner() {
        return this.quizOwner;
    }
    
    public void QuizzQuestion.setQuizOwner(Quizz quizOwner) {
        this.quizOwner = quizOwner;
    }
    
}
