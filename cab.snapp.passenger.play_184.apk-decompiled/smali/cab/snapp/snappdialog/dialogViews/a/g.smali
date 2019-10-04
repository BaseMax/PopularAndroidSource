.class public final Lcab/snapp/snappdialog/dialogViews/a/g;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/g$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g;->b:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDirection()I
    .locals 1

    .line 77
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g;->b:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x12d

    return v0
.end method
