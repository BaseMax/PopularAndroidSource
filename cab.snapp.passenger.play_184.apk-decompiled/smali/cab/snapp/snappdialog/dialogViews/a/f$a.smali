.class public final Lcab/snapp/snappdialog/dialogViews/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/f;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/f;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/f$a;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/f;
    .locals 1

    .line 87
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/f$a;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    return-object v0
.end method

.method public final setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/f$a;->a:Lcab/snapp/snappdialog/dialogViews/a/f;

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/dialogViews/a/f;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method
