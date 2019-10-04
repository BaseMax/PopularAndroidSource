.class final Lcom/raizlabs/android/dbflow/d/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/d/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/d/b$a;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/d/b$a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/b$a$1;->a:Lcom/raizlabs/android/dbflow/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a$1;->a:Lcom/raizlabs/android/dbflow/d/b$a;

    .line 1040
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/d/b$a;->a:Lcom/raizlabs/android/dbflow/d/g;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/b$a$1;->a:Lcom/raizlabs/android/dbflow/d/b$a;

    .line 2040
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/d/b$a;->a:Lcom/raizlabs/android/dbflow/d/g;

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/d/g;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-void
.end method
