.class final Lcab/snapp/passenger/units/ticket/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/ticket/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/ticket/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/ticket/c;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/c$1;->a:Lcab/snapp/passenger/units/ticket/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcab/snapp/passenger/units/ticket/c$1;->a:Lcab/snapp/passenger/units/ticket/c;

    invoke-static {p2}, Lcab/snapp/passenger/units/ticket/c;->a(Lcab/snapp/passenger/units/ticket/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 45
    iget-object p2, p0, Lcab/snapp/passenger/units/ticket/c$1;->a:Lcab/snapp/passenger/units/ticket/c;

    invoke-static {p2}, Lcab/snapp/passenger/units/ticket/c;->b(Lcab/snapp/passenger/units/ticket/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/ticket/a;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/ticket/a;->handleIssueDescLength(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
