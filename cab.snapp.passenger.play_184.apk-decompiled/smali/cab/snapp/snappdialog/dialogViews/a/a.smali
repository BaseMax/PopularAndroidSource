.class public final Lcab/snapp/snappdialog/dialogViews/a/a;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcab/snapp/snappdialog/b/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->b:I

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->d:I

    return-void
.end method


# virtual methods
.method public final getCheckedItemPosition()I
    .locals 1

    .line 103
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->d:I

    return v0
.end method

.method public final getDefaultCheckedItemPosition()I
    .locals 1

    .line 123
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->d:I

    return v0
.end method

.method public final getDirection()I
    .locals 1

    .line 93
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->b:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->a:Ljava/lang/String;

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

    .line 83
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getMultipleItemsSelectedListener()Lcab/snapp/snappdialog/b/c;
    .locals 1

    .line 113
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/a;->e:Lcab/snapp/snappdialog/b/c;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x130

    return v0
.end method
