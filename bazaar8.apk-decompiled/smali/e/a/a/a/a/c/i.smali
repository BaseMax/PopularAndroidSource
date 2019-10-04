.class public Le/a/a/a/a/c/i;
.super Le/a/a/a/a/c/l;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/a/c/j$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/a/a/c/l<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/a/a/c/j$a;


# direct methods
.method public constructor <init>(Le/a/a/a/a/c/j$a;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a/c/i;->b:Le/a/a/a/a/c/j$a;

    invoke-direct {p0, p2, p3}, Le/a/a/a/a/c/l;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/a/a/a/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/a/a/a/a/c/g<",
            "Le/a/a/a/a/c/p;",
            ">;:",
            "Le/a/a/a/a/c/m;",
            ":",
            "Le/a/a/a/a/c/p;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/a/a/c/i;->b:Le/a/a/a/a/c/j$a;

    invoke-static {v0}, Le/a/a/a/a/c/j$a;->a(Le/a/a/a/a/c/j$a;)Le/a/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
