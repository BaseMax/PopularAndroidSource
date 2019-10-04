.class public final Lc/c/a/n/j/h/c;
.super Ljava/lang/Object;
.source "SeasonPickerFragment.kt"

# interfaces
.implements Lc/c/a/n/c/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/h/e;->Ua()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/d/m<",
        "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/h/e;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/h/c;->a:Lc/c/a/n/j/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/h/c;->a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/h/c;->a:Lc/c/a/n/j/h/e;

    invoke-static {v0}, Lc/c/a/n/j/h/e;->b(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/j/h/a;->a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/n/j/h/c;->a:Lc/c/a/n/j/h/e;

    invoke-virtual {p1}, Lb/o/a/d;->La()V

    return-void
.end method
