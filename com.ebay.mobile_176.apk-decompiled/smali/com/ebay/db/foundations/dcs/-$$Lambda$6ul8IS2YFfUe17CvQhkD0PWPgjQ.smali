.class public final synthetic Lcom/ebay/db/foundations/dcs/-$$Lambda$6ul8IS2YFfUe17CvQhkD0PWPgjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field private final synthetic f$0:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/db/foundations/dcs/DcsTypeConverters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$6ul8IS2YFfUe17CvQhkD0PWPgjQ;->f$0:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/-$$Lambda$6ul8IS2YFfUe17CvQhkD0PWPgjQ;->f$0:Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object p1

    return-object p1
.end method
