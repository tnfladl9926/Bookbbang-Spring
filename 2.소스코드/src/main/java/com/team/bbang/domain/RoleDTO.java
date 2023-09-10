package com.team.bbang.domain;

import lombok.Data;

@Data
public class RoleDTO {
	private String roleseq;
	private String memberseq; 
	private String authority; //권한
}
