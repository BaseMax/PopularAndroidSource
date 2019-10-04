.class public final Lcab/snapp/snappdialog/dialogViews/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/b;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/b$a;->a:Lcab/snapp/snappdialog/dialogViews/a/b;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/b;
    .locals 1

    .line 104
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/b$a;->a:Lcab/snapp/snappdialog/dialogViews/a/b;

    return-object v0
.end method

.method public final setOnDateSelectedListener(Lcab/snapp/snappdialog/dialogViews/a/b$b;)Lcab/snapp/snappdialog/dialogViews/a/b$a;
    .locals 1

    .line 93
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/b$a;->a:Lcab/snapp/snappdialog/dialogViews/a/b;

    .line 1044
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/b;->a:Lcab/snapp/snappdialog/dialogViews/a/b$b;

    return-object p0
.end method
