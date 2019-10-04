.class public final Lcab/snapp/snappdialog/dialogViews/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/e;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/e;
    .locals 1

    .line 203
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    return-object v0
.end method

.method public final setIsRepeatingEnabled(Z)Lcab/snapp/snappdialog/dialogViews/a/e$a;
    .locals 1

    .line 168
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    .line 2107
    iput-boolean p1, v0, Lcab/snapp/snappdialog/dialogViews/a/e;->b:Z

    return-object p0
.end method

.method public final setItems(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappdialog/dialogViews/a/e$a;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    if-eqz p1, :cond_0

    .line 3101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/e;->a:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setItems([Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/e$a;
    .locals 1

    .line 192
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    .line 4089
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/e;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public final setOnItemSelectedListener(Lcab/snapp/snappdialog/dialogViews/a/e$b;)Lcab/snapp/snappdialog/dialogViews/a/e$a;
    .locals 1

    .line 156
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/e$a;->a:Lcab/snapp/snappdialog/dialogViews/a/e;

    .line 1079
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/e;->c:Lcab/snapp/snappdialog/dialogViews/a/e$b;

    return-object p0
.end method
