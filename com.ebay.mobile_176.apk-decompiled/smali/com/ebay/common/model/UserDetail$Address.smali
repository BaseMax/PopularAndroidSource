.class public final Lcom/ebay/common/model/UserDetail$Address;
.super Ljava/lang/Object;
.source "UserDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/UserDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field public cityName:Ljava/lang/String;

.field public companyName:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;

.field public stateOrProvince:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public street1:Ljava/lang/String;

.field public street2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
