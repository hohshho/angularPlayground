import { Component, input, output, signal } from '@angular/core';
import { Ticket } from '../ticket.model';

@Component({
  selector: 'app-ticket',
  standalone: true,
  imports: [],
  templateUrl: './ticket.component.html',
  styleUrl: './ticket.component.css'
})
export class TicketComponent {

  data = input.required<Ticket>();
  close = output();
  detailIsVisible = signal(false);

  onToggleDetail() {
    // this.detailIsVisible.set(this.detailIsVisible());
    this.detailIsVisible.update(wasVisible => !wasVisible);
  }

  onMarkAsCompleted() {
    this.close.emit();
  }
}
