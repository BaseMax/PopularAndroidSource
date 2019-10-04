.class public abstract Lcom/ebay/common/net/api/search/SearchServiceRequest;
.super Lcom/ebay/nautilus/domain/net/EbayCosRequest;
.source "SearchServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ebay/common/net/api/search/SearchServiceResponse;",
        ">",
        "Lcom/ebay/nautilus/domain/net/EbayCosRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "searchV2"

.field public static final SERVICE_NAME:Ljava/lang/String; = "search"

.field public static final USER_PROFILE_ITEMS_OPERATION_NAME:Ljava/lang/String; = "searchV2UserProfile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/net/CosVersionType;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/nautilus/domain/net/EbayCosRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/net/CosVersionType;)V

    return-void
.end method


# virtual methods
.method public abstract getPageNumber()I
.end method
