.class public Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;
.super Ljava/lang/Object;
.source "SaasSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/following/SaasSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location$Deserializer;
    }
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
