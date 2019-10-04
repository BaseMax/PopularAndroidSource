package com.mapbox.mapboxsdk.maps;

import com.mapbox.mapboxsdk.annotations.Annotation;
import java.util.List;

interface Annotations {
    List<Annotation> obtainAll();

    Annotation obtainBy(long j);

    void removeAll();

    void removeBy(long j);

    void removeBy(Annotation annotation);

    void removeBy(List<? extends Annotation> list);
}
