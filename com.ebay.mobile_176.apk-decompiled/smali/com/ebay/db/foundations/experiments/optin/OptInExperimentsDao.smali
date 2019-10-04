.class public interface abstract Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;
.super Ljava/lang/Object;
.source "OptInExperimentsDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract clearAll()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "delete from opt_in_treatment"
    .end annotation
.end method

.method public abstract getExperimentList()Ljava/util/List;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "select distinct experimentName, experimentId, experimentType from opt_in_treatment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTreatment(Ljava/lang/String;)Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "select * from opt_in_treatment where id LIKE :treatmentId"
    .end annotation
.end method

.method public abstract getTreatments(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "select * from opt_in_treatment where experimentId LIKE :experimentId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTreatmentsList(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "select * from opt_in_treatment where experimentId LIKE :experimentId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Insert;
        onConflict = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateTreatments(ZLjava/util/List;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "update opt_in_treatment set isEnabled = :isEnabled where experimentType IN (:experimentTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
