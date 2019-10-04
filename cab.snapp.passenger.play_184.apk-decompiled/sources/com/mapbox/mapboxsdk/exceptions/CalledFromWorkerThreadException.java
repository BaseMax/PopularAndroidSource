package com.mapbox.mapboxsdk.exceptions;

public class CalledFromWorkerThreadException extends RuntimeException {
    public CalledFromWorkerThreadException(String str) {
        super(str);
    }
}
