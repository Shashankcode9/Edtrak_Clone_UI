package com.register_verify.type1.dto;

public class Emaildto {

    private String otp;

    @Override
    public String toString() {
        return "Emaildto{" +
                ", otp='" + otp + '\'' +
                '}';
    }

    public String getOtp() {
        return otp;
    }
    public void setOtp(String otp) {
        this.otp = otp;
    }



}
