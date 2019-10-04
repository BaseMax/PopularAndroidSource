.class public final Lcab/snapp/snappdialog/dialogViews/a/f;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x132

    return v0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/a/f;->a:Ljava/lang/String;

    return-void
.end method
