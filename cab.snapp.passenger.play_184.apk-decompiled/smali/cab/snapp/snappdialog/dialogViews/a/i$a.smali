.class public final Lcab/snapp/snappdialog/dialogViews/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/i;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/i;
    .locals 1

    .line 267
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    return-object v0
.end method

.method public final setDefaultCheckedItemPosition(I)Lcab/snapp/snappdialog/dialogViews/a/i$a;
    .locals 1

    .line 256
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 5157
    iput p1, v0, Lcab/snapp/snappdialog/dialogViews/a/i;->d:I

    return-object p0
.end method

.method public final setDirection(I)Lcab/snapp/snappdialog/dialogViews/a/i$a;
    .locals 1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 4014
    iput p1, v0, Lcab/snapp/snappdialog/dialogViews/a/i;->b:I

    :cond_1
    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/i$a;
    .locals 1

    .line 204
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 1127
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappdialog/dialogViews/a/i$a;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 2137
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/i;->c:Ljava/util/List;

    return-object p0
.end method

.method public final setSingleItemSelectedListener(Lcab/snapp/snappdialog/b/d;)Lcab/snapp/snappdialog/dialogViews/a/i$a;
    .locals 1

    .line 228
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/i$a;->a:Lcab/snapp/snappdialog/dialogViews/a/i;

    .line 3147
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/i;->e:Lcab/snapp/snappdialog/b/d;

    return-object p0
.end method
