.class public final Lcab/snapp/passenger/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOperatorItem(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)Lcab/snapp/passenger/a/c$a;
    .locals 1

    .line 244
    new-instance v0, Lcab/snapp/passenger/a/c$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/c$a;-><init>()V

    .line 245
    iput-object p0, v0, Lcab/snapp/passenger/a/c$a;->a:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object v0
.end method
