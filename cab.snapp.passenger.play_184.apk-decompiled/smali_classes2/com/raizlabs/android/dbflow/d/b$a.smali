.class public final Lcom/raizlabs/android/dbflow/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/raizlabs/android/dbflow/d/g;

.field private final b:Lcom/raizlabs/android/dbflow/d/d;

.field private final c:Lcom/raizlabs/android/dbflow/d/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/raizlabs/android/dbflow/d/d;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/d/d;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    .line 77
    new-instance v0, Lcom/raizlabs/android/dbflow/d/b$a$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/d/b$a$1;-><init>(Lcom/raizlabs/android/dbflow/d/b$a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->c:Lcom/raizlabs/android/dbflow/d/g;

    .line 48
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/b$a;->c:Lcom/raizlabs/android/dbflow/d/g;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/d/d;->addOnTableChangedListener(Lcom/raizlabs/android/dbflow/d/g;)V

    return-void
.end method


# virtual methods
.method public final isSubscribed()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/d/d;->isSubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/d/d;->registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public final setListener(Lcom/raizlabs/android/dbflow/d/g;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/b$a;->a:Lcom/raizlabs/android/dbflow/d/g;

    return-void
.end method

.method public final unregister(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/d/d;->unregisterForContentChanges(Landroid/content/Context;)V

    return-void
.end method

.method public final unregisterAll()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->b:Lcom/raizlabs/android/dbflow/d/d;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/b$a;->c:Lcom/raizlabs/android/dbflow/d/g;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/d/d;->removeTableChangedListener(Lcom/raizlabs/android/dbflow/d/g;)V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a;->a:Lcom/raizlabs/android/dbflow/d/g;

    return-void
.end method
