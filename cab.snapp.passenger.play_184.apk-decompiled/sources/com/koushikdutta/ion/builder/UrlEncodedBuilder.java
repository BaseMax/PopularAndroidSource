package com.koushikdutta.ion.builder;

import com.koushikdutta.ion.builder.UrlEncodedBuilder;
import java.util.List;
import java.util.Map;

public interface UrlEncodedBuilder<U extends UrlEncodedBuilder> {
    U setBodyParameter(String str, String str2);

    U setBodyParameters(Map<String, List<String>> map);
}
