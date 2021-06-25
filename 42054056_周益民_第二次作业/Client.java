package com.swufe.javaee.request_response.utils;

public class Client {
    private String be;
    private String browser;

    public String getOs() { return be; }

    public void setOs(String os) { this.be = be; }

    public String getBrowser() { return browser; }

    public void setBrowser(String browser) { this.browser = browser; }

    public Client(String be, String browser) {
        this.be = be;
        this.browser = browser;
    }
}
