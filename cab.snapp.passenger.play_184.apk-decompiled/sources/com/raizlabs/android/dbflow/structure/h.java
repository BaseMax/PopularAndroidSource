package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.c;
import com.raizlabs.android.dbflow.sql.language.u;
import com.raizlabs.android.dbflow.structure.b.i;

public abstract class h<TQueryModel> extends b<TQueryModel> {
    public h(c cVar) {
        super(cVar);
    }

    public u getPrimaryConditionClause(TQueryModel tquerymodel) {
        throw new UnsupportedOperationException("QueryModels cannot check for existence");
    }

    public boolean exists(TQueryModel tquerymodel) {
        throw new UnsupportedOperationException("QueryModels cannot check for existence");
    }

    public boolean exists(TQueryModel tquerymodel, i iVar) {
        throw new UnsupportedOperationException("QueryModels cannot check for existence");
    }
}
