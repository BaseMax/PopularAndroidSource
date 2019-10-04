.class public final Lcab/snapp/passenger/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data/models/charge/ChargePackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChargePackage()Lcab/snapp/passenger/data/models/charge/ChargePackage;
    .locals 1

    .line 183
    iget-object v0, p0, Lcab/snapp/passenger/a/e$a;->a:Lcab/snapp/passenger/data/models/charge/ChargePackage;

    return-object v0
.end method
