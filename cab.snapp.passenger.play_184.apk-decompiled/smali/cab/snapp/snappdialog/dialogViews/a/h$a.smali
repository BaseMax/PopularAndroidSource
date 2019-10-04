.class public final Lcab/snapp/snappdialog/dialogViews/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/h;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h$a;->a:Lcab/snapp/snappdialog/dialogViews/a/h;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/h;
    .locals 1

    .line 158
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h$a;->a:Lcab/snapp/snappdialog/dialogViews/a/h;

    return-object v0
.end method

.method public final setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/h$a;
    .locals 1

    .line 135
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h$a;->a:Lcab/snapp/snappdialog/dialogViews/a/h;

    .line 1085
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappdialog/dialogViews/a/h$a;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/h$a;->a:Lcab/snapp/snappdialog/dialogViews/a/h;

    .line 2095
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/h;->b:Ljava/util/List;

    return-object p0
.end method
