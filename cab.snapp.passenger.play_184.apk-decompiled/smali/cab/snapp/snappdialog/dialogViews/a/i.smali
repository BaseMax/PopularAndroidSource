.class public final Lcab/snapp/snappdialog/dialogViews/a/i;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/i$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Lcab/snapp/snappdialog/b/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->b:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->d:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultCheckedItemPosition()I
    .locals 1

    .line 114
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->d:I

    return v0
.end method

.method public final getDirection()I
    .locals 1

    .line 104
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->b:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->a:Ljava/lang/String;

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

    .line 84
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getSingleItemSelectedListener()Lcab/snapp/snappdialog/b/d;
    .locals 1

    .line 94
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i;->e:Lcab/snapp/snappdialog/b/d;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x12f

    return v0
.end method
