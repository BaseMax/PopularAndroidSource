.class public final synthetic Lc/c/a/o/b/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# static fields
.field public static final synthetic a:Lc/c/a/o/b/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/o/b/c;

    invoke-direct {v0}, Lc/c/a/o/b/c;-><init>()V

    sput-object v0, Lc/c/a/o/b/c;->a:Lc/c/a/o/b/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final format(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
