.class public final Lcab/snapp/snappdialog/dialogViews/a/h;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h;->c:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDirection()I
    .locals 1

    .line 62
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h;->c:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x12e

    return v0
.end method
