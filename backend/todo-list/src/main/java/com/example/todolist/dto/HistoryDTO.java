package com.example.todolist.dto;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDateTime;

public class HistoryDTO {
    public static final String DATETIME_FORMAT = "yyyy-MM-dd HH:mm";

    private CardLogDTO card;
    private String action;
    private String preStatus;
    private String currStatus;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DATETIME_FORMAT, timezone = "Asia/Seoul")
    private LocalDateTime actionTime;

    public HistoryDTO(CardLogDTO card, String action, String preStatus, String currStatus, LocalDateTime actionTime) {
        this.card = card;
        this.action = action;
        this.preStatus = preStatus;
        this.currStatus = currStatus;
        this.actionTime = actionTime;
    }

    public CardLogDTO getCard() {
        return card;
    }

    public String getAction() {
        return action;
    }

    public String getPreStatus() {
        return preStatus;
    }

    public String getCurrStatus() {
        return currStatus;
    }

    public LocalDateTime getActionTime() {
        return actionTime;
    }

    @Override
    public String toString() {
        return "HistoryDto{" +
                "card=" + card +
                ", action='" + action + '\'' +
                ", preStatus='" + preStatus + '\'' +
                ", currStatus='" + currStatus + '\'' +
                ", actionTime=" + actionTime +
                '}';
    }
}
