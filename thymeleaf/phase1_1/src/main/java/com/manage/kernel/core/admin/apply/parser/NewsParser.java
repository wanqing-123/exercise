package com.manage.kernel.core.admin.apply.parser;

import com.manage.kernel.core.admin.apply.dto.NewsDto;
import com.manage.kernel.jpa.entity.News;

import java.util.ArrayList;
import java.util.List;

public class NewsParser {

    public static NewsDto toDto(News news) {
        return toDto(news, new NewsDto());
    }

    public static List<NewsDto> toDtoList(List<News> newsList) {
        List<NewsDto> newsDtos = new ArrayList<>();
        for (News news : newsList) {
            newsDtos.add(toDto(news, new NewsDto()));
        }
        return newsDtos;
    }

    private static NewsDto toDto(News news, NewsDto newsDto) {
        newsDto.setId(news.getId());
        newsDto.setTitle(news.getTitle());
        newsDto.setNumber(news.getNumber());
        newsDto.setContent(news.getContent());
        newsDto.setSource(news.getSource());
        newsDto.setType(news.getType());
        newsDto.setStatus(news.getStatus());
        newsDto.setImageId(news.getImageId());
        newsDto.setCreatedAt(news.getCreatedAt());
        newsDto.setUpdatedAt(news.getUpdatedAt());
        newsDto.setCreatedBy(news.getCreatedUserName());
        newsDto.setUpdatedBy(news.getUpdatedUserName());
        return newsDto;
    }
}
