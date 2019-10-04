.class public final Lcab/snapp/snappdialog/dialogViews/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/g;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g$a;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/g;
    .locals 1

    .line 131
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g$a;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    return-object v0
.end method

.method public final setDirection(I)Lcab/snapp/snappdialog/dialogViews/a/g$a;
    .locals 1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g$a;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    .line 2011
    iput p1, v0, Lcab/snapp/snappdialog/dialogViews/a/g;->b:I

    :cond_1
    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;
    .locals 1

    .line 109
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/g$a;->a:Lcab/snapp/snappdialog/dialogViews/a/g;

    .line 1064
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/g;->a:Ljava/lang/String;

    return-object p0
.end method
