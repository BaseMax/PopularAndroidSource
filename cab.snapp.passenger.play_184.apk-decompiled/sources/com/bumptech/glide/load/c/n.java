package com.bumptech.glide.load.c;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.g;
import java.util.Collections;
import java.util.List;

public interface n<Model, Data> {

    public static class a<Data> {
        public final List<d> alternateKeys;
        public final com.bumptech.glide.load.a.d<Data> fetcher;
        public final d sourceKey;

        public a(d dVar, com.bumptech.glide.load.a.d<Data> dVar2) {
            this(dVar, Collections.emptyList(), dVar2);
        }

        public a(d dVar, List<d> list, com.bumptech.glide.load.a.d<Data> dVar2) {
            this.sourceKey = (d) j.checkNotNull(dVar);
            this.alternateKeys = (List) j.checkNotNull(list);
            this.fetcher = (com.bumptech.glide.load.a.d) j.checkNotNull(dVar2);
        }
    }

    a<Data> buildLoadData(Model model, int i, int i2, g gVar);

    boolean handles(Model model);
}
