.class public final synthetic Lc/e/a/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lc/e/a/a/o$b;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/e/a/a/c;->a:Z

    iput p2, p0, Lc/e/a/a/c;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/a/M$b;)V
    .locals 2

    iget-boolean v0, p0, Lc/e/a/a/c;->a:Z

    iget v1, p0, Lc/e/a/a/c;->b:I

    invoke-static {v0, v1, p1}, Lc/e/a/a/z;->a(ZILc/e/a/a/M$b;)V

    return-void
.end method
