.class public final Lc/c/a/p/o;
.super Ljava/lang/Object;
.source "PeriodicStartWorker_AssistedFactory.java"

# interfaces
.implements Lcom/farsitel/bazaar/work/PeriodicStartWorker$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/work/PeriodicStartWorker;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/work/PeriodicStartWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-object v0
.end method
