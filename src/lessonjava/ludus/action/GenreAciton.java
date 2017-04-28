package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.GenreDAO;
import lessonjava.ludus.dao.GoItemListDAO;
import lessonjava.ludus.dto.GenreDTO;
import lessonjava.ludus.dto.ItemDTO;

public class GenreAciton extends ActionSupport {
	private List<GenreDTO> genreList = new ArrayList<>();
	private ArrayList<ItemDTO> displayList = new ArrayList<ItemDTO>();
	public String execute() {
		GenreDAO dao= new GenreDAO();
		genreList = dao.selectGenre();
		GoItemListDAO dao1 = new GoItemListDAO();
		displayList = dao1.select(null);
		return SUCCESS;

	}
	public List<GenreDTO> getGenreList() {
		return genreList;
	}
	public void setGenreList(List<GenreDTO> genreList) {
		this.genreList = genreList;
	}
	public ArrayList<ItemDTO> getDisplayList() {
		return displayList;
	}
	public void setDisplayList(ArrayList<ItemDTO> displayList) {
		this.displayList = displayList;
	}



}
