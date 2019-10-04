.class public final Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;
.super Lcom/farsitel/bazaar/analytics/model/where/WhereType;
.source "WholeApplication.kt"


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/where/WhereType;-><init>()V

    const-string v0, "whole_application"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;->name:Ljava/lang/String;

    return-object v0
.end method
