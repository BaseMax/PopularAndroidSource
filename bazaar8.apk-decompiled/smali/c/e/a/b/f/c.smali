.class public final Lc/e/a/b/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$a$a;)Lcom/google/android/gms/dynamite/DynamiteModule$a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;-><init>()V

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a:I

    .line 3
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a:I

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    .line 4
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->b:I

    .line 6
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->b:I

    if-eqz p1, :cond_1

    .line 7
    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->c:I

    :cond_1
    :goto_0
    return-object v0
.end method
