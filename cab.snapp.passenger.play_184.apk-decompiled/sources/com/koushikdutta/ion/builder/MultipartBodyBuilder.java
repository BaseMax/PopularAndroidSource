package com.koushikdutta.ion.builder;

import com.koushikdutta.async.http.a.g;
import com.koushikdutta.ion.builder.MultipartBodyBuilder;
import java.io.File;
import java.util.List;
import java.util.Map;

public interface MultipartBodyBuilder<M extends MultipartBodyBuilder> {
    M addMultipartParts(Iterable<g> iterable);

    M addMultipartParts(g... gVarArr);

    M setMultipartContentType(String str);

    M setMultipartFile(String str, File file);

    M setMultipartFile(String str, String str2, File file);

    M setMultipartParameter(String str, String str2);

    M setMultipartParameters(Map<String, List<String>> map);
}
