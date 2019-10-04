.class public Lc/e/a/c/i/f$a;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lc/e/a/c/i/f$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lc/e/a/c/i/f$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lc/e/a/c/i/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/c/i/f$a;

    invoke-direct {v0}, Lc/e/a/c/i/f$a;-><init>()V

    sput-object v0, Lc/e/a/c/i/f$a;->a:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/c/i/f$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/c/i/f$d;-><init>(Lc/e/a/c/i/e;)V

    iput-object v0, p0, Lc/e/a/c/i/f$a;->b:Lc/e/a/c/i/f$d;

    return-void
.end method


# virtual methods
.method public a(FLc/e/a/c/i/f$d;Lc/e/a/c/i/f$d;)Lc/e/a/c/i/f$d;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/f$a;->b:Lc/e/a/c/i/f$d;

    iget v1, p2, Lc/e/a/c/i/f$d;->a:F

    iget v2, p3, Lc/e/a/c/i/f$d;->a:F

    .line 2
    invoke-static {v1, v2, p1}, Lc/e/a/c/m/a;->a(FFF)F

    move-result v1

    iget v2, p2, Lc/e/a/c/i/f$d;->b:F

    iget v3, p3, Lc/e/a/c/i/f$d;->b:F

    .line 3
    invoke-static {v2, v3, p1}, Lc/e/a/c/m/a;->a(FFF)F

    move-result v2

    iget p2, p2, Lc/e/a/c/i/f$d;->c:F

    iget p3, p3, Lc/e/a/c/i/f$d;->c:F

    .line 4
    invoke-static {p2, p3, p1}, Lc/e/a/c/m/a;->a(FFF)F

    move-result p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lc/e/a/c/i/f$d;->a(FFF)V

    .line 6
    iget-object p1, p0, Lc/e/a/c/i/f$a;->b:Lc/e/a/c/i/f$d;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lc/e/a/c/i/f$d;

    check-cast p3, Lc/e/a/c/i/f$d;

    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/c/i/f$a;->a(FLc/e/a/c/i/f$d;Lc/e/a/c/i/f$d;)Lc/e/a/c/i/f$d;

    move-result-object p1

    return-object p1
.end method
