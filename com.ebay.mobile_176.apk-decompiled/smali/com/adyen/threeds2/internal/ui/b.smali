.class public final Lcom/adyen/threeds2/internal/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/Window;

.field private final c:Lcom/adyen/threeds2/internal/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x35a

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x35b

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x35c

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x35d

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/adyen/threeds2/internal/ui/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Lcom/adyen/threeds2/internal/ui/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/b;->b:Landroid/view/Window;

    .line 46
    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/b;->c:Lcom/adyen/threeds2/internal/ui/a;

    .line 48
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/b;->c:Lcom/adyen/threeds2/internal/ui/a;

    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/b;->b:Landroid/view/Window;

    invoke-virtual {p1, p2}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    .line 60
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/b;->b:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/16 p3, 0x357

    .line 62
    invoke-static {p3}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p1, p2, v0, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-exception p1

    .line 66
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x358

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x359

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 71
    :cond_0
    sget-object p3, Lcom/adyen/threeds2/internal/ui/b;->a:[Ljava/lang/String;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 73
    :try_start_1
    invoke-virtual {p1, p2, v3, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, v3

    :catch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 85
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/b;->c:Lcom/adyen/threeds2/internal/ui/a;

    invoke-virtual {p1, v0, p4}, Lcom/adyen/threeds2/internal/ui/a;->a(Landroid/view/View;Landroid/util/AttributeSet;)V

    :cond_3
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/b;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
