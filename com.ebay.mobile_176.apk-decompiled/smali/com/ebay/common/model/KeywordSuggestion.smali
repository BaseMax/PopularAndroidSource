.class public Lcom/ebay/common/model/KeywordSuggestion;
.super Ljava/lang/Object;
.source "KeywordSuggestion.java"


# instance fields
.field public rank:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ebay/common/model/KeywordSuggestion;->title:Ljava/lang/String;

    return-object v0
.end method
