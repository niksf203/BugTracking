package com.siwa.dao;

import java.util.List;

import com.siwa.model.Label;

public interface LabelDAO {

	public void addLabel(Label label);
	
	public void deleteLabel(int labelID);
	
	public List<Label> getAllLabel();
	
	public Label getLabelByProjectId(int projectID);
	
	public List<Label> getAllLabelByProjectId(int projectID);
	
	public List<Label> getAllLabelByProjectName(String projectName);
}
