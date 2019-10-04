.class public final Lcab/snapp/deeplink/models/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcab/snapp/deeplink/models/b;->a:D

    .line 23
    iput-wide p3, p0, Lcab/snapp/deeplink/models/b;->b:D

    return-void
.end method


# virtual methods
.method public final getLatitude()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcab/snapp/deeplink/models/b;->a:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcab/snapp/deeplink/models/b;->b:D

    return-wide v0
.end method
