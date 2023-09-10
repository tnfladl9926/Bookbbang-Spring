package com.team.bbang.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Search extends Pager {

	private String searchType;

	private String keyword;



}
