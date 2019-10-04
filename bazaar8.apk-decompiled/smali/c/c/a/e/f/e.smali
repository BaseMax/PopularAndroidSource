.class public final Lc/c/a/e/f/e;
.super Ljava/lang/Object;
.source "EntityStatusMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/f/e$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/f/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/f/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/f/e$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/f/e;->a:Lc/c/a/e/f/e$a;

    return-void
.end method

.method public static final a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    sget-object v0, Lc/c/a/e/f/e;->a:Lc/c/a/e/f/e$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/e$a;->a(I)Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lc/c/a/e/f/e;->a:Lc/c/a/e/f/e$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/e$a;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
