package ir.cafebazaar.inline.ui.changers.exceptions;

import ir.cafebazaar.inline.platform.exceptions.PlatformException;

public class ViewNotFoundException extends PlatformException {
    public ViewNotFoundException(Object obj) {
        super("could not find view " + obj);
    }
}
