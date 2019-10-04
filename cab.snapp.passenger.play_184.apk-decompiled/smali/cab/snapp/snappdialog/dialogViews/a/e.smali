.class public final Lcab/snapp/snappdialog/dialogViews/a/e;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/e$b;,
        Lcab/snapp/snappdialog/dialogViews/a/e$a;
    }
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field b:Z

.field c:Lcab/snapp/snappdialog/dialogViews/a/e$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/e$b;
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e;->c:Lcab/snapp/snappdialog/dialogViews/a/e$b;

    return-object v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x134

    return v0
.end method

.method public final isRepeatingEnabled()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e;->b:Z

    return v0
.end method
