.class final Lcom/google/android/material/floatingactionbutton/a$c;
.super Lcom/google/android/material/floatingactionbutton/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/a;)V
    .locals 1

    .line 707
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a$c;->a:Lcom/google/android/material/floatingactionbutton/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/a$f;-><init>(Lcom/google/android/material/floatingactionbutton/a;B)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a$c;->a:Lcom/google/android/material/floatingactionbutton/a;

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/a;->l:F

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/a$c;->a:Lcom/google/android/material/floatingactionbutton/a;

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/a;->n:F

    add-float/2addr v0, v1

    return v0
.end method
