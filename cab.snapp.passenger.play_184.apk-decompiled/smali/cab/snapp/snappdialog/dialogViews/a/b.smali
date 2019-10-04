.class public final Lcab/snapp/snappdialog/dialogViews/a/b;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/b$b;,
        Lcab/snapp/snappdialog/dialogViews/a/b$a;
    }
.end annotation


# instance fields
.field a:Lcab/snapp/snappdialog/dialogViews/a/b$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDateSelectedListener()Lcab/snapp/snappdialog/dialogViews/a/b$b;
    .locals 1

    .line 31
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/b;->a:Lcab/snapp/snappdialog/dialogViews/a/b$b;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x133

    return v0
.end method
